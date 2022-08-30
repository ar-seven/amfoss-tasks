//import array

import java.util.Arrays;
import java.util.Scanner;


public class journeytoregionals{
    public static void main(String[] args) {
        //Scanner
        Scanner sc = new Scanner(System.in);


        int n=sc.nextInt();

        int expense[]=new int[n];

        for(int i=0;i<n;i++){
            expense[i]=(sc.nextInt());
        }

        int q = sc.nextInt();

        int query[][]=new int[q][2];

        int temp[]=new int[2];

        for(int i=0;i<q;i++){
            temp[0]=sc.nextInt();
            temp[1]=sc.nextInt();
            //print temp list
            query[i][0]=temp[0];
            query[i][1]=temp[1];
        }

        //for i in range q
        for(int i=0;i<q;i++){
            int sum=0;
            //for j in range n
            for(int j=query[i][0]-1;j<query[i][1];j++){
                sum+=expense[j];
            }
            System.out.println(sum);
        }



    }
}