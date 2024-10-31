package CH36.View.GUI.MEMBER;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.HashMap;
import java.util.Map;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import CH36.View.GUI.MainGUI;

public class MemberUI extends JFrame implements ActionListener {
 

	JButton 도서관리_btn;
	JButton 대여관리_btn;
	JButton 회원관리_btn;
	JButton 로그아웃_btn;

	MainGUI mainGUI;
	 
	public MemberUI() {
		super("MEMBER UI");
		setBounds(10, 10, 250, 130);

		// 패널
		JPanel panel = new JPanel();
		panel.setLayout(null);

		
		// 
		도서관리_btn = new JButton("도서관리");
		대여관리_btn = new JButton("대여관리");
		회원관리_btn = new JButton("회원관리");
		로그아웃_btn = new JButton("로그아웃");
		
		//
		도서관리_btn.setBounds(10,10,100,30);
		대여관리_btn.setBounds(120,10,100,30);
		회원관리_btn.setBounds(10,50,100,30);
		로그아웃_btn.setBounds(120,50,100,30);

		
		//
		도서관리_btn.addActionListener(this);
		대여관리_btn.addActionListener(this);
		회원관리_btn.addActionListener(this);
		
		
		//
		panel.add(도서관리_btn);
		panel.add(대여관리_btn);
		panel.add(회원관리_btn);
		panel.add(로그아웃_btn);
		
		
		//로그아웃_btn
		로그아웃_btn.addActionListener(this);
		
		add(panel);
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setVisible(false);
		
		
		//x버튼에 대한 이벤트 처리
		addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
            	// 로그아웃 처리
            	// 메인 창 활성화
            	mainGUI.setVisible(true);
            }
        });
		
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
	
		
	}
	
	
	public void setMainUI(MainGUI mainGUI) {
		this.mainGUI = mainGUI;
	}
	

}
