/*
 * IMU Cube display for PIC32AK SCL3300 position snf movement data
 */
package cube;

import java.util.Scanner;
import javax.media.j3d.BranchGroup;
import javax.media.j3d.Canvas3D;
import javax.media.j3d.Transform3D;
import javax.media.j3d.TransformGroup;
import javax.swing.JFrame;
import javax.vecmath.Quat4d;
import javax.vecmath.Vector3d;
import com.fazecast.jSerialComm.SerialPort;
import com.sun.j3d.utils.geometry.ColorCube;
import com.sun.j3d.utils.universe.SimpleUniverse;

/**
 *
 * @author root
 */
public class Cube {

    public static void main(String[] args) {

        JFrame frame = new JFrame("Sensor Fusion Visual Test Program");
        Canvas3D canvas = new Canvas3D(SimpleUniverse.getPreferredConfiguration());
        SimpleUniverse universe = new SimpleUniverse(canvas);
        BranchGroup group = new BranchGroup();
        ColorCube cube = new ColorCube(0.3);

        TransformGroup transformGroup = new TransformGroup();
        transformGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_WRITE);
        transformGroup.addChild(cube);

        universe.getViewingPlatform().setNominalViewingTransform();
        group.addChild(transformGroup);
        universe.addBranchGraph(group);

        frame.add(canvas);
        frame.setSize(800, 600);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);

        SerialPort port = SerialPort.getCommPort("ttyUSB1");
        port.setBaudRate(460800);
        port.setComPortTimeouts(SerialPort.TIMEOUT_SCANNER, 1, 1);
        if (port.openPort() == false) {
            System.err.println("Unable to open the serial port. Exiting.");
            System.exit(1);
        }
        Scanner s = new Scanner(port.getInputStream());
        while (s.hasNextLine()) {
            try {
                String line = s.nextLine();
                String[] token = line.split(",");

                // multiply x/y/z by -1 to swap frames of reference
                double w = Double.parseDouble(token[0]);
                double x = Double.parseDouble(token[1]);
                double y = Double.parseDouble(token[2]);
                double z = Double.parseDouble(token[3]);
                double ax = Double.parseDouble(token[4]);
                double ay = Double.parseDouble(token[5]);
                double az = Double.parseDouble(token[6]);

                Quat4d quaternion = new Quat4d(w, x, y, z);
                Vector3d vector = new Vector3d((az * 0.02), (ay * 0.02), (az * 0.02));
                transformGroup.setTransform(new Transform3D(quaternion, vector, 1.0));
                System.out.println(String.format("x = %+2.3f     y = %+2.3f     z = %+2.3f ", x, y, z));

            } catch (Exception e) {
            }
        }
        s.close();
        System.err.println("Lost communication with the serial port. Exiting.");
        System.exit(1);
    }

}
