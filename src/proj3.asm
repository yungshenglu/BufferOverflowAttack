
main:     file format elf32-i386


Disassembly of section .init:

080485a0 <_init>:
 80485a0:	53                   	push   ebx
 80485a1:	83 ec 08             	sub    esp,0x8
 80485a4:	e8 c7 01 00 00       	call   8048770 <__x86.get_pc_thunk.bx>
 80485a9:	81 c3 57 2a 00 00    	add    ebx,0x2a57
 80485af:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80485b5:	85 c0                	test   eax,eax
 80485b7:	74 05                	je     80485be <_init+0x1e>
 80485b9:	e8 72 01 00 00       	call   8048730 <close@plt+0x10>
 80485be:	83 c4 08             	add    esp,0x8
 80485c1:	5b                   	pop    ebx
 80485c2:	c3                   	ret    

Disassembly of section .plt:

080485d0 <strstr@plt-0x10>:
 80485d0:	ff 35 04 b0 04 08    	push   DWORD PTR ds:0x804b004
 80485d6:	ff 25 08 b0 04 08    	jmp    DWORD PTR ds:0x804b008
 80485dc:	00 00                	add    BYTE PTR [eax],al
	...

080485e0 <strstr@plt>:
 80485e0:	ff 25 0c b0 04 08    	jmp    DWORD PTR ds:0x804b00c
 80485e6:	68 00 00 00 00       	push   0x0
 80485eb:	e9 e0 ff ff ff       	jmp    80485d0 <_init+0x30>

080485f0 <read@plt>:
 80485f0:	ff 25 10 b0 04 08    	jmp    DWORD PTR ds:0x804b010
 80485f6:	68 08 00 00 00       	push   0x8
 80485fb:	e9 d0 ff ff ff       	jmp    80485d0 <_init+0x30>

08048600 <printf@plt>:
 8048600:	ff 25 14 b0 04 08    	jmp    DWORD PTR ds:0x804b014
 8048606:	68 10 00 00 00       	push   0x10
 804860b:	e9 c0 ff ff ff       	jmp    80485d0 <_init+0x30>

08048610 <_exit@plt>:
 8048610:	ff 25 18 b0 04 08    	jmp    DWORD PTR ds:0x804b018
 8048616:	68 18 00 00 00       	push   0x18
 804861b:	e9 b0 ff ff ff       	jmp    80485d0 <_init+0x30>

08048620 <memcpy@plt>:
 8048620:	ff 25 1c b0 04 08    	jmp    DWORD PTR ds:0x804b01c
 8048626:	68 20 00 00 00       	push   0x20
 804862b:	e9 a0 ff ff ff       	jmp    80485d0 <_init+0x30>

08048630 <signal@plt>:
 8048630:	ff 25 20 b0 04 08    	jmp    DWORD PTR ds:0x804b020
 8048636:	68 28 00 00 00       	push   0x28
 804863b:	e9 90 ff ff ff       	jmp    80485d0 <_init+0x30>

08048640 <alarm@plt>:
 8048640:	ff 25 24 b0 04 08    	jmp    DWORD PTR ds:0x804b024
 8048646:	68 30 00 00 00       	push   0x30
 804864b:	e9 80 ff ff ff       	jmp    80485d0 <_init+0x30>

08048650 <puts@plt>:
 8048650:	ff 25 28 b0 04 08    	jmp    DWORD PTR ds:0x804b028
 8048656:	68 38 00 00 00       	push   0x38
 804865b:	e9 70 ff ff ff       	jmp    80485d0 <_init+0x30>

08048660 <system@plt>:
 8048660:	ff 25 2c b0 04 08    	jmp    DWORD PTR ds:0x804b02c
 8048666:	68 40 00 00 00       	push   0x40
 804866b:	e9 60 ff ff ff       	jmp    80485d0 <_init+0x30>

08048670 <exit@plt>:
 8048670:	ff 25 30 b0 04 08    	jmp    DWORD PTR ds:0x804b030
 8048676:	68 48 00 00 00       	push   0x48
 804867b:	e9 50 ff ff ff       	jmp    80485d0 <_init+0x30>

08048680 <open@plt>:
 8048680:	ff 25 34 b0 04 08    	jmp    DWORD PTR ds:0x804b034
 8048686:	68 50 00 00 00       	push   0x50
 804868b:	e9 40 ff ff ff       	jmp    80485d0 <_init+0x30>

08048690 <strchr@plt>:
 8048690:	ff 25 38 b0 04 08    	jmp    DWORD PTR ds:0x804b038
 8048696:	68 58 00 00 00       	push   0x58
 804869b:	e9 30 ff ff ff       	jmp    80485d0 <_init+0x30>

080486a0 <strlen@plt>:
 80486a0:	ff 25 3c b0 04 08    	jmp    DWORD PTR ds:0x804b03c
 80486a6:	68 60 00 00 00       	push   0x60
 80486ab:	e9 20 ff ff ff       	jmp    80485d0 <_init+0x30>

080486b0 <setenv@plt>:
 80486b0:	ff 25 40 b0 04 08    	jmp    DWORD PTR ds:0x804b040
 80486b6:	68 68 00 00 00       	push   0x68
 80486bb:	e9 10 ff ff ff       	jmp    80485d0 <_init+0x30>

080486c0 <__libc_start_main@plt>:
 80486c0:	ff 25 44 b0 04 08    	jmp    DWORD PTR ds:0x804b044
 80486c6:	68 70 00 00 00       	push   0x70
 80486cb:	e9 00 ff ff ff       	jmp    80485d0 <_init+0x30>

080486d0 <write@plt>:
 80486d0:	ff 25 48 b0 04 08    	jmp    DWORD PTR ds:0x804b048
 80486d6:	68 78 00 00 00       	push   0x78
 80486db:	e9 f0 fe ff ff       	jmp    80485d0 <_init+0x30>

080486e0 <setvbuf@plt>:
 80486e0:	ff 25 4c b0 04 08    	jmp    DWORD PTR ds:0x804b04c
 80486e6:	68 80 00 00 00       	push   0x80
 80486eb:	e9 e0 fe ff ff       	jmp    80485d0 <_init+0x30>

080486f0 <memset@plt>:
 80486f0:	ff 25 50 b0 04 08    	jmp    DWORD PTR ds:0x804b050
 80486f6:	68 88 00 00 00       	push   0x88
 80486fb:	e9 d0 fe ff ff       	jmp    80485d0 <_init+0x30>

08048700 <__isoc99_scanf@plt>:
 8048700:	ff 25 54 b0 04 08    	jmp    DWORD PTR ds:0x804b054
 8048706:	68 90 00 00 00       	push   0x90
 804870b:	e9 c0 fe ff ff       	jmp    80485d0 <_init+0x30>

08048710 <atoi@plt>:
 8048710:	ff 25 58 b0 04 08    	jmp    DWORD PTR ds:0x804b058
 8048716:	68 98 00 00 00       	push   0x98
 804871b:	e9 b0 fe ff ff       	jmp    80485d0 <_init+0x30>

08048720 <close@plt>:
 8048720:	ff 25 5c b0 04 08    	jmp    DWORD PTR ds:0x804b05c
 8048726:	68 a0 00 00 00       	push   0xa0
 804872b:	e9 a0 fe ff ff       	jmp    80485d0 <_init+0x30>

Disassembly of section .plt.got:

08048730 <.plt.got>:
 8048730:	ff 25 fc af 04 08    	jmp    DWORD PTR ds:0x804affc
 8048736:	66 90                	xchg   ax,ax

Disassembly of section .text:

08048740 <_start>:
 8048740:	31 ed                	xor    ebp,ebp
 8048742:	5e                   	pop    esi
 8048743:	89 e1                	mov    ecx,esp
 8048745:	83 e4 f0             	and    esp,0xfffffff0
 8048748:	50                   	push   eax
 8048749:	54                   	push   esp
 804874a:	52                   	push   edx
 804874b:	68 10 90 04 08       	push   0x8049010
 8048750:	68 b0 8f 04 08       	push   0x8048fb0
 8048755:	51                   	push   ecx
 8048756:	56                   	push   esi
 8048757:	68 03 8f 04 08       	push   0x8048f03
 804875c:	e8 5f ff ff ff       	call   80486c0 <__libc_start_main@plt>
 8048761:	f4                   	hlt    
 8048762:	66 90                	xchg   ax,ax
 8048764:	66 90                	xchg   ax,ax
 8048766:	66 90                	xchg   ax,ax
 8048768:	66 90                	xchg   ax,ax
 804876a:	66 90                	xchg   ax,ax
 804876c:	66 90                	xchg   ax,ax
 804876e:	66 90                	xchg   ax,ax

08048770 <__x86.get_pc_thunk.bx>:
 8048770:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048773:	c3                   	ret    
 8048774:	66 90                	xchg   ax,ax
 8048776:	66 90                	xchg   ax,ax
 8048778:	66 90                	xchg   ax,ax
 804877a:	66 90                	xchg   ax,ax
 804877c:	66 90                	xchg   ax,ax
 804877e:	66 90                	xchg   ax,ax

08048780 <deregister_tm_clones>:
 8048780:	b8 6b b0 04 08       	mov    eax,0x804b06b
 8048785:	2d 68 b0 04 08       	sub    eax,0x804b068
 804878a:	83 f8 06             	cmp    eax,0x6
 804878d:	76 1a                	jbe    80487a9 <deregister_tm_clones+0x29>
 804878f:	b8 00 00 00 00       	mov    eax,0x0
 8048794:	85 c0                	test   eax,eax
 8048796:	74 11                	je     80487a9 <deregister_tm_clones+0x29>
 8048798:	55                   	push   ebp
 8048799:	89 e5                	mov    ebp,esp
 804879b:	83 ec 14             	sub    esp,0x14
 804879e:	68 68 b0 04 08       	push   0x804b068
 80487a3:	ff d0                	call   eax
 80487a5:	83 c4 10             	add    esp,0x10
 80487a8:	c9                   	leave  
 80487a9:	f3 c3                	repz ret 
 80487ab:	90                   	nop
 80487ac:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

080487b0 <register_tm_clones>:
 80487b0:	b8 68 b0 04 08       	mov    eax,0x804b068
 80487b5:	2d 68 b0 04 08       	sub    eax,0x804b068
 80487ba:	c1 f8 02             	sar    eax,0x2
 80487bd:	89 c2                	mov    edx,eax
 80487bf:	c1 ea 1f             	shr    edx,0x1f
 80487c2:	01 d0                	add    eax,edx
 80487c4:	d1 f8                	sar    eax,1
 80487c6:	74 1b                	je     80487e3 <register_tm_clones+0x33>
 80487c8:	ba 00 00 00 00       	mov    edx,0x0
 80487cd:	85 d2                	test   edx,edx
 80487cf:	74 12                	je     80487e3 <register_tm_clones+0x33>
 80487d1:	55                   	push   ebp
 80487d2:	89 e5                	mov    ebp,esp
 80487d4:	83 ec 10             	sub    esp,0x10
 80487d7:	50                   	push   eax
 80487d8:	68 68 b0 04 08       	push   0x804b068
 80487dd:	ff d2                	call   edx
 80487df:	83 c4 10             	add    esp,0x10
 80487e2:	c9                   	leave  
 80487e3:	f3 c3                	repz ret 
 80487e5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80487e9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080487f0 <__do_global_dtors_aux>:
 80487f0:	80 3d a8 b0 04 08 00 	cmp    BYTE PTR ds:0x804b0a8,0x0
 80487f7:	75 13                	jne    804880c <__do_global_dtors_aux+0x1c>
 80487f9:	55                   	push   ebp
 80487fa:	89 e5                	mov    ebp,esp
 80487fc:	83 ec 08             	sub    esp,0x8
 80487ff:	e8 7c ff ff ff       	call   8048780 <deregister_tm_clones>
 8048804:	c6 05 a8 b0 04 08 01 	mov    BYTE PTR ds:0x804b0a8,0x1
 804880b:	c9                   	leave  
 804880c:	f3 c3                	repz ret 
 804880e:	66 90                	xchg   ax,ax

08048810 <frame_dummy>:
 8048810:	b8 10 af 04 08       	mov    eax,0x804af10
 8048815:	8b 10                	mov    edx,DWORD PTR [eax]
 8048817:	85 d2                	test   edx,edx
 8048819:	75 05                	jne    8048820 <frame_dummy+0x10>
 804881b:	eb 93                	jmp    80487b0 <register_tm_clones>
 804881d:	8d 76 00             	lea    esi,[esi+0x0]
 8048820:	ba 00 00 00 00       	mov    edx,0x0
 8048825:	85 d2                	test   edx,edx
 8048827:	74 f2                	je     804881b <frame_dummy+0xb>
 8048829:	55                   	push   ebp
 804882a:	89 e5                	mov    ebp,esp
 804882c:	83 ec 14             	sub    esp,0x14
 804882f:	50                   	push   eax
 8048830:	ff d2                	call   edx
 8048832:	83 c4 10             	add    esp,0x10
 8048835:	c9                   	leave  
 8048836:	e9 75 ff ff ff       	jmp    80487b0 <register_tm_clones>

0804883b <magic2>:
 804883b:	55                   	push   ebp
 804883c:	89 e5                	mov    ebp,esp
 804883e:	81 ec 98 00 00 00    	sub    esp,0x98
 8048844:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 804884b:	83 ec 04             	sub    esp,0x4
 804884e:	68 80 00 00 00       	push   0x80
 8048853:	6a 00                	push   0x0
 8048855:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 804885b:	50                   	push   eax
 804885c:	e8 8f fe ff ff       	call   80486f0 <memset@plt>
 8048861:	83 c4 10             	add    esp,0x10
 8048864:	83 ec 0c             	sub    esp,0xc
 8048867:	68 30 90 04 08       	push   0x8049030
 804886c:	e8 df fd ff ff       	call   8048650 <puts@plt>
 8048871:	83 c4 10             	add    esp,0x10
 8048874:	83 ec 04             	sub    esp,0x4
 8048877:	68 80 00 00 00       	push   0x80
 804887c:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 8048882:	50                   	push   eax
 8048883:	6a 00                	push   0x0
 8048885:	e8 66 fd ff ff       	call   80485f0 <read@plt>
 804888a:	83 c4 10             	add    esp,0x10
 804888d:	83 ec 08             	sub    esp,0x8
 8048890:	6a 3d                	push   0x3d
 8048892:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 8048898:	50                   	push   eax
 8048899:	e8 f2 fd ff ff       	call   8048690 <strchr@plt>
 804889e:	83 c4 10             	add    esp,0x10
 80488a1:	85 c0                	test   eax,eax
 80488a3:	0f 95 c0             	setne  al
 80488a6:	0f b6 c0             	movzx  eax,al
 80488a9:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 80488ac:	83 ec 08             	sub    esp,0x8
 80488af:	68 3a 90 04 08       	push   0x804903a
 80488b4:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 80488ba:	50                   	push   eax
 80488bb:	e8 20 fd ff ff       	call   80485e0 <strstr@plt>
 80488c0:	83 c4 10             	add    esp,0x10
 80488c3:	85 c0                	test   eax,eax
 80488c5:	0f 95 c0             	setne  al
 80488c8:	0f b6 c0             	movzx  eax,al
 80488cb:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 80488ce:	83 ec 08             	sub    esp,0x8
 80488d1:	68 3f 90 04 08       	push   0x804903f
 80488d6:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 80488dc:	50                   	push   eax
 80488dd:	e8 fe fc ff ff       	call   80485e0 <strstr@plt>
 80488e2:	83 c4 10             	add    esp,0x10
 80488e5:	85 c0                	test   eax,eax
 80488e7:	0f 95 c0             	setne  al
 80488ea:	0f b6 c0             	movzx  eax,al
 80488ed:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 80488f0:	83 ec 08             	sub    esp,0x8
 80488f3:	6a 2f                	push   0x2f
 80488f5:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 80488fb:	50                   	push   eax
 80488fc:	e8 8f fd ff ff       	call   8048690 <strchr@plt>
 8048901:	83 c4 10             	add    esp,0x10
 8048904:	85 c0                	test   eax,eax
 8048906:	0f 95 c0             	setne  al
 8048909:	0f b6 c0             	movzx  eax,al
 804890c:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 804890f:	83 ec 08             	sub    esp,0x8
 8048912:	68 46 90 04 08       	push   0x8049046
 8048917:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 804891d:	50                   	push   eax
 804891e:	e8 bd fc ff ff       	call   80485e0 <strstr@plt>
 8048923:	83 c4 10             	add    esp,0x10
 8048926:	85 c0                	test   eax,eax
 8048928:	0f 95 c0             	setne  al
 804892b:	0f b6 c0             	movzx  eax,al
 804892e:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 8048931:	83 ec 08             	sub    esp,0x8
 8048934:	68 4a 90 04 08       	push   0x804904a
 8048939:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 804893f:	50                   	push   eax
 8048940:	e8 9b fc ff ff       	call   80485e0 <strstr@plt>
 8048945:	83 c4 10             	add    esp,0x10
 8048948:	85 c0                	test   eax,eax
 804894a:	0f 95 c0             	setne  al
 804894d:	0f b6 c0             	movzx  eax,al
 8048950:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 8048953:	83 ec 08             	sub    esp,0x8
 8048956:	6a 5c                	push   0x5c
 8048958:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 804895e:	50                   	push   eax
 804895f:	e8 2c fd ff ff       	call   8048690 <strchr@plt>
 8048964:	83 c4 10             	add    esp,0x10
 8048967:	85 c0                	test   eax,eax
 8048969:	0f 95 c0             	setne  al
 804896c:	0f b6 c0             	movzx  eax,al
 804896f:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 8048972:	83 ec 08             	sub    esp,0x8
 8048975:	6a 60                	push   0x60
 8048977:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 804897d:	50                   	push   eax
 804897e:	e8 0d fd ff ff       	call   8048690 <strchr@plt>
 8048983:	83 c4 10             	add    esp,0x10
 8048986:	85 c0                	test   eax,eax
 8048988:	0f 95 c0             	setne  al
 804898b:	0f b6 c0             	movzx  eax,al
 804898e:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 8048991:	83 ec 08             	sub    esp,0x8
 8048994:	68 4e 90 04 08       	push   0x804904e
 8048999:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 804899f:	50                   	push   eax
 80489a0:	e8 3b fc ff ff       	call   80485e0 <strstr@plt>
 80489a5:	83 c4 10             	add    esp,0x10
 80489a8:	85 c0                	test   eax,eax
 80489aa:	0f 95 c0             	setne  al
 80489ad:	0f b6 c0             	movzx  eax,al
 80489b0:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
 80489b3:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 80489b7:	75 14                	jne    80489cd <magic2+0x192>
 80489b9:	83 ec 0c             	sub    esp,0xc
 80489bc:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 80489c2:	50                   	push   eax
 80489c3:	e8 98 fc ff ff       	call   8048660 <system@plt>
 80489c8:	83 c4 10             	add    esp,0x10
 80489cb:	eb 10                	jmp    80489dd <magic2+0x1a2>
 80489cd:	83 ec 0c             	sub    esp,0xc
 80489d0:	68 54 90 04 08       	push   0x8049054
 80489d5:	e8 76 fc ff ff       	call   8048650 <puts@plt>
 80489da:	83 c4 10             	add    esp,0x10
 80489dd:	90                   	nop
 80489de:	c9                   	leave  
 80489df:	c3                   	ret    

080489e0 <magic1>:
 80489e0:	55                   	push   ebp
 80489e1:	89 e5                	mov    ebp,esp
 80489e3:	83 ec 58             	sub    esp,0x58
 80489e6:	83 ec 08             	sub    esp,0x8
 80489e9:	6a 00                	push   0x0
 80489eb:	68 69 90 04 08       	push   0x8049069
 80489f0:	e8 8b fc ff ff       	call   8048680 <open@plt>
 80489f5:	83 c4 10             	add    esp,0x10
 80489f8:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 80489fb:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 80489ff:	7f 1a                	jg     8048a1b <magic1+0x3b>
 8048a01:	83 ec 0c             	sub    esp,0xc
 8048a04:	68 71 90 04 08       	push   0x8049071
 8048a09:	e8 42 fc ff ff       	call   8048650 <puts@plt>
 8048a0e:	83 c4 10             	add    esp,0x10
 8048a11:	83 ec 0c             	sub    esp,0xc
 8048a14:	6a 01                	push   0x1
 8048a16:	e8 55 fc ff ff       	call   8048670 <exit@plt>
 8048a1b:	83 ec 04             	sub    esp,0x4
 8048a1e:	6a 40                	push   0x40
 8048a20:	6a 00                	push   0x0
 8048a22:	8d 45 b4             	lea    eax,[ebp-0x4c]
 8048a25:	50                   	push   eax
 8048a26:	e8 c5 fc ff ff       	call   80486f0 <memset@plt>
 8048a2b:	83 c4 10             	add    esp,0x10
 8048a2e:	83 ec 0c             	sub    esp,0xc
 8048a31:	68 77 90 04 08       	push   0x8049077
 8048a36:	e8 15 fc ff ff       	call   8048650 <puts@plt>
 8048a3b:	83 c4 10             	add    esp,0x10
 8048a3e:	83 ec 04             	sub    esp,0x4
 8048a41:	6a 40                	push   0x40
 8048a43:	8d 45 b4             	lea    eax,[ebp-0x4c]
 8048a46:	50                   	push   eax
 8048a47:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048a4a:	e8 a1 fb ff ff       	call   80485f0 <read@plt>
 8048a4f:	83 c4 10             	add    esp,0x10
 8048a52:	83 ec 04             	sub    esp,0x4
 8048a55:	6a 40                	push   0x40
 8048a57:	8d 45 b4             	lea    eax,[ebp-0x4c]
 8048a5a:	50                   	push   eax
 8048a5b:	6a 01                	push   0x1
 8048a5d:	e8 6e fc ff ff       	call   80486d0 <write@plt>
 8048a62:	83 c4 10             	add    esp,0x10
 8048a65:	90                   	nop
 8048a66:	c9                   	leave  
 8048a67:	c3                   	ret    

08048a68 <delete_env>:
 8048a68:	55                   	push   ebp
 8048a69:	89 e5                	mov    ebp,esp
 8048a6b:	83 ec 18             	sub    esp,0x18
 8048a6e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048a71:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048a74:	eb 2b                	jmp    8048aa1 <delete_env+0x39>
 8048a76:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048a79:	8b 00                	mov    eax,DWORD PTR [eax]
 8048a7b:	83 ec 0c             	sub    esp,0xc
 8048a7e:	50                   	push   eax
 8048a7f:	e8 1c fc ff ff       	call   80486a0 <strlen@plt>
 8048a84:	83 c4 10             	add    esp,0x10
 8048a87:	89 c2                	mov    edx,eax
 8048a89:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048a8c:	8b 00                	mov    eax,DWORD PTR [eax]
 8048a8e:	83 ec 04             	sub    esp,0x4
 8048a91:	52                   	push   edx
 8048a92:	6a 00                	push   0x0
 8048a94:	50                   	push   eax
 8048a95:	e8 56 fc ff ff       	call   80486f0 <memset@plt>
 8048a9a:	83 c4 10             	add    esp,0x10
 8048a9d:	83 45 f4 04          	add    DWORD PTR [ebp-0xc],0x4
 8048aa1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048aa4:	8b 00                	mov    eax,DWORD PTR [eax]
 8048aa6:	85 c0                	test   eax,eax
 8048aa8:	75 cc                	jne    8048a76 <delete_env+0xe>
 8048aaa:	90                   	nop
 8048aab:	c9                   	leave  
 8048aac:	c3                   	ret    

08048aad <generate_secret>:
 8048aad:	55                   	push   ebp
 8048aae:	89 e5                	mov    ebp,esp
 8048ab0:	83 ec 18             	sub    esp,0x18
 8048ab3:	83 ec 08             	sub    esp,0x8
 8048ab6:	6a 00                	push   0x0
 8048ab8:	68 82 90 04 08       	push   0x8049082
 8048abd:	e8 be fb ff ff       	call   8048680 <open@plt>
 8048ac2:	83 c4 10             	add    esp,0x10
 8048ac5:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048ac8:	83 ec 04             	sub    esp,0x4
 8048acb:	6a 04                	push   0x4
 8048acd:	8d 45 f0             	lea    eax,[ebp-0x10]
 8048ad0:	50                   	push   eax
 8048ad1:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048ad4:	e8 17 fb ff ff       	call   80485f0 <read@plt>
 8048ad9:	83 c4 10             	add    esp,0x10
 8048adc:	83 ec 0c             	sub    esp,0xc
 8048adf:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048ae2:	e8 39 fc ff ff       	call   8048720 <close@plt>
 8048ae7:	83 c4 10             	add    esp,0x10
 8048aea:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048aed:	c9                   	leave  
 8048aee:	c3                   	ret    

08048aef <init_stu>:
 8048aef:	55                   	push   ebp
 8048af0:	89 e5                	mov    ebp,esp
 8048af2:	83 ec 08             	sub    esp,0x8
 8048af5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048af8:	83 ec 04             	sub    esp,0x4
 8048afb:	6a 05                	push   0x5
 8048afd:	68 8e 90 04 08       	push   0x804908e
 8048b02:	50                   	push   eax
 8048b03:	e8 18 fb ff ff       	call   8048620 <memcpy@plt>
 8048b08:	83 c4 10             	add    esp,0x10
 8048b0b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048b0e:	83 c0 2c             	add    eax,0x2c
 8048b11:	83 ec 04             	sub    esp,0x4
 8048b14:	6a 03                	push   0x3
 8048b16:	68 94 90 04 08       	push   0x8049094
 8048b1b:	50                   	push   eax
 8048b1c:	e8 ff fa ff ff       	call   8048620 <memcpy@plt>
 8048b21:	83 c4 10             	add    esp,0x10
 8048b24:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048b27:	c7 40 28 14 00 00 00 	mov    DWORD PTR [eax+0x28],0x14
 8048b2e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048b31:	83 c0 2c             	add    eax,0x2c
 8048b34:	c7 40 28 16 00 00 00 	mov    DWORD PTR [eax+0x28],0x16
 8048b3b:	90                   	nop
 8048b3c:	c9                   	leave  
 8048b3d:	c3                   	ret    

08048b3e <menu>:
 8048b3e:	55                   	push   ebp
 8048b3f:	89 e5                	mov    ebp,esp
 8048b41:	83 ec 08             	sub    esp,0x8
 8048b44:	83 ec 0c             	sub    esp,0xc
 8048b47:	68 98 90 04 08       	push   0x8049098
 8048b4c:	e8 ff fa ff ff       	call   8048650 <puts@plt>
 8048b51:	83 c4 10             	add    esp,0x10
 8048b54:	83 ec 0c             	sub    esp,0xc
 8048b57:	68 af 90 04 08       	push   0x80490af
 8048b5c:	e8 ef fa ff ff       	call   8048650 <puts@plt>
 8048b61:	83 c4 10             	add    esp,0x10
 8048b64:	83 ec 0c             	sub    esp,0xc
 8048b67:	68 98 90 04 08       	push   0x8049098
 8048b6c:	e8 df fa ff ff       	call   8048650 <puts@plt>
 8048b71:	83 c4 10             	add    esp,0x10
 8048b74:	83 ec 0c             	sub    esp,0xc
 8048b77:	68 c6 90 04 08       	push   0x80490c6
 8048b7c:	e8 cf fa ff ff       	call   8048650 <puts@plt>
 8048b81:	83 c4 10             	add    esp,0x10
 8048b84:	83 ec 0c             	sub    esp,0xc
 8048b87:	68 dd 90 04 08       	push   0x80490dd
 8048b8c:	e8 bf fa ff ff       	call   8048650 <puts@plt>
 8048b91:	83 c4 10             	add    esp,0x10
 8048b94:	83 ec 0c             	sub    esp,0xc
 8048b97:	68 f4 90 04 08       	push   0x80490f4
 8048b9c:	e8 af fa ff ff       	call   8048650 <puts@plt>
 8048ba1:	83 c4 10             	add    esp,0x10
 8048ba4:	83 ec 0c             	sub    esp,0xc
 8048ba7:	68 98 90 04 08       	push   0x8049098
 8048bac:	e8 9f fa ff ff       	call   8048650 <puts@plt>
 8048bb1:	83 c4 10             	add    esp,0x10
 8048bb4:	83 ec 0c             	sub    esp,0xc
 8048bb7:	68 0b 91 04 08       	push   0x804910b
 8048bbc:	e8 3f fa ff ff       	call   8048600 <printf@plt>
 8048bc1:	83 c4 10             	add    esp,0x10
 8048bc4:	90                   	nop
 8048bc5:	c9                   	leave  
 8048bc6:	c3                   	ret    

08048bc7 <view>:
 8048bc7:	55                   	push   ebp
 8048bc8:	89 e5                	mov    ebp,esp
 8048bca:	83 ec 18             	sub    esp,0x18
 8048bcd:	83 ec 0c             	sub    esp,0xc
 8048bd0:	68 19 91 04 08       	push   0x8049119
 8048bd5:	e8 26 fa ff ff       	call   8048600 <printf@plt>
 8048bda:	83 c4 10             	add    esp,0x10
 8048bdd:	83 ec 08             	sub    esp,0x8
 8048be0:	8d 45 f4             	lea    eax,[ebp-0xc]
 8048be3:	50                   	push   eax
 8048be4:	68 2b 91 04 08       	push   0x804912b
 8048be9:	e8 12 fb ff ff       	call   8048700 <__isoc99_scanf@plt>
 8048bee:	83 c4 10             	add    esp,0x10
 8048bf1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048bf4:	83 f8 01             	cmp    eax,0x1
 8048bf7:	7f 5c                	jg     8048c55 <view+0x8e>
 8048bf9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048bfc:	6b d0 2c             	imul   edx,eax,0x2c
 8048bff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048c02:	01 d0                	add    eax,edx
 8048c04:	83 ec 08             	sub    esp,0x8
 8048c07:	50                   	push   eax
 8048c08:	68 2e 91 04 08       	push   0x804912e
 8048c0d:	e8 ee f9 ff ff       	call   8048600 <printf@plt>
 8048c12:	83 c4 10             	add    esp,0x10
 8048c15:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048c18:	6b d0 2c             	imul   edx,eax,0x2c
 8048c1b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048c1e:	01 d0                	add    eax,edx
 8048c20:	83 c0 20             	add    eax,0x20
 8048c23:	83 ec 08             	sub    esp,0x8
 8048c26:	50                   	push   eax
 8048c27:	68 38 91 04 08       	push   0x8049138
 8048c2c:	e8 cf f9 ff ff       	call   8048600 <printf@plt>
 8048c31:	83 c4 10             	add    esp,0x10
 8048c34:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048c37:	6b d0 2c             	imul   edx,eax,0x2c
 8048c3a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048c3d:	01 d0                	add    eax,edx
 8048c3f:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
 8048c42:	83 ec 08             	sub    esp,0x8
 8048c45:	50                   	push   eax
 8048c46:	68 42 91 04 08       	push   0x8049142
 8048c4b:	e8 b0 f9 ff ff       	call   8048600 <printf@plt>
 8048c50:	83 c4 10             	add    esp,0x10
 8048c53:	eb 10                	jmp    8048c65 <view+0x9e>
 8048c55:	83 ec 0c             	sub    esp,0xc
 8048c58:	68 4c 91 04 08       	push   0x804914c
 8048c5d:	e8 ee f9 ff ff       	call   8048650 <puts@plt>
 8048c62:	83 c4 10             	add    esp,0x10
 8048c65:	90                   	nop
 8048c66:	c9                   	leave  
 8048c67:	c3                   	ret    

08048c68 <edit_note>:
 8048c68:	55                   	push   ebp
 8048c69:	89 e5                	mov    ebp,esp
 8048c6b:	83 ec 18             	sub    esp,0x18
 8048c6e:	83 ec 0c             	sub    esp,0xc
 8048c71:	68 5e 91 04 08       	push   0x804915e
 8048c76:	e8 85 f9 ff ff       	call   8048600 <printf@plt>
 8048c7b:	83 c4 10             	add    esp,0x10
 8048c7e:	83 ec 08             	sub    esp,0x8
 8048c81:	8d 45 f4             	lea    eax,[ebp-0xc]
 8048c84:	50                   	push   eax
 8048c85:	68 7a 91 04 08       	push   0x804917a
 8048c8a:	e8 71 fa ff ff       	call   8048700 <__isoc99_scanf@plt>
 8048c8f:	83 c4 10             	add    esp,0x10
 8048c92:	8b 55 2c             	mov    edx,DWORD PTR [ebp+0x2c]
 8048c95:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048c98:	39 c2                	cmp    edx,eax
 8048c9a:	0f 85 b0 00 00 00    	jne    8048d50 <edit_note+0xe8>
 8048ca0:	83 ec 0c             	sub    esp,0xc
 8048ca3:	68 19 91 04 08       	push   0x8049119
 8048ca8:	e8 53 f9 ff ff       	call   8048600 <printf@plt>
 8048cad:	83 c4 10             	add    esp,0x10
 8048cb0:	83 ec 08             	sub    esp,0x8
 8048cb3:	8d 45 f0             	lea    eax,[ebp-0x10]
 8048cb6:	50                   	push   eax
 8048cb7:	68 2b 91 04 08       	push   0x804912b
 8048cbc:	e8 3f fa ff ff       	call   8048700 <__isoc99_scanf@plt>
 8048cc1:	83 c4 10             	add    esp,0x10
 8048cc4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048cc7:	83 f8 01             	cmp    eax,0x1
 8048cca:	7f 72                	jg     8048d3e <edit_note+0xd6>
 8048ccc:	83 ec 0c             	sub    esp,0xc
 8048ccf:	68 7e 91 04 08       	push   0x804917e
 8048cd4:	e8 27 f9 ff ff       	call   8048600 <printf@plt>
 8048cd9:	83 c4 10             	add    esp,0x10
 8048cdc:	83 ec 08             	sub    esp,0x8
 8048cdf:	8d 45 ec             	lea    eax,[ebp-0x14]
 8048ce2:	50                   	push   eax
 8048ce3:	68 2b 91 04 08       	push   0x804912b
 8048ce8:	e8 13 fa ff ff       	call   8048700 <__isoc99_scanf@plt>
 8048ced:	83 c4 10             	add    esp,0x10
 8048cf0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 8048cf3:	83 f8 0f             	cmp    eax,0xf
 8048cf6:	7f 34                	jg     8048d2c <edit_note+0xc4>
 8048cf8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 8048cfb:	89 c1                	mov    ecx,eax
 8048cfd:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048d00:	6b d0 2c             	imul   edx,eax,0x2c
 8048d03:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048d06:	01 d0                	add    eax,edx
 8048d08:	83 c0 10             	add    eax,0x10
 8048d0b:	83 ec 04             	sub    esp,0x4
 8048d0e:	51                   	push   ecx
 8048d0f:	50                   	push   eax
 8048d10:	6a 00                	push   0x0
 8048d12:	e8 d9 f8 ff ff       	call   80485f0 <read@plt>
 8048d17:	83 c4 10             	add    esp,0x10
 8048d1a:	83 ec 0c             	sub    esp,0xc
 8048d1d:	68 96 91 04 08       	push   0x8049196
 8048d22:	e8 29 f9 ff ff       	call   8048650 <puts@plt>
 8048d27:	83 c4 10             	add    esp,0x10
 8048d2a:	eb 34                	jmp    8048d60 <edit_note+0xf8>
 8048d2c:	83 ec 0c             	sub    esp,0xc
 8048d2f:	68 4c 91 04 08       	push   0x804914c
 8048d34:	e8 17 f9 ff ff       	call   8048650 <puts@plt>
 8048d39:	83 c4 10             	add    esp,0x10
 8048d3c:	eb 22                	jmp    8048d60 <edit_note+0xf8>
 8048d3e:	83 ec 0c             	sub    esp,0xc
 8048d41:	68 4c 91 04 08       	push   0x804914c
 8048d46:	e8 05 f9 ff ff       	call   8048650 <puts@plt>
 8048d4b:	83 c4 10             	add    esp,0x10
 8048d4e:	eb 10                	jmp    8048d60 <edit_note+0xf8>
 8048d50:	83 ec 0c             	sub    esp,0xc
 8048d53:	68 9c 91 04 08       	push   0x804919c
 8048d58:	e8 f3 f8 ff ff       	call   8048650 <puts@plt>
 8048d5d:	83 c4 10             	add    esp,0x10
 8048d60:	90                   	nop
 8048d61:	c9                   	leave  
 8048d62:	c3                   	ret    

08048d63 <func>:
 8048d63:	55                   	push   ebp
 8048d64:	89 e5                	mov    ebp,esp
 8048d66:	81 ec 98 00 00 00    	sub    esp,0x98
 8048d6c:	c7 85 78 ff ff ff 00 	mov    DWORD PTR [ebp-0x88],0x0
 8048d73:	00 00 00 
 8048d76:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
 8048d79:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
 8048d7f:	c7 85 7c ff ff ff 55 	mov    DWORD PTR [ebp-0x84],0x61632055
 8048d86:	20 63 61 
 8048d89:	c7 45 80 6e 27 74 20 	mov    DWORD PTR [ebp-0x80],0x2074276e
 8048d90:	c7 45 84 73 65 65 20 	mov    DWORD PTR [ebp-0x7c],0x20656573
 8048d97:	c7 45 88 6d 65 21 00 	mov    DWORD PTR [ebp-0x78],0x21656d
 8048d9e:	c7 45 8c 00 00 00 00 	mov    DWORD PTR [ebp-0x74],0x0
 8048da5:	c7 45 90 00 00 00 00 	mov    DWORD PTR [ebp-0x70],0x0
 8048dac:	c7 45 94 00 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x0
 8048db3:	c7 45 98 00 00 00 00 	mov    DWORD PTR [ebp-0x68],0x0
 8048dba:	e8 ee fc ff ff       	call   8048aad <generate_secret>
 8048dbf:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
 8048dc2:	83 ec 04             	sub    esp,0x4
 8048dc5:	6a 58                	push   0x58
 8048dc7:	6a 00                	push   0x0
 8048dc9:	8d 45 a0             	lea    eax,[ebp-0x60]
 8048dcc:	50                   	push   eax
 8048dcd:	e8 1e f9 ff ff       	call   80486f0 <memset@plt>
 8048dd2:	83 c4 10             	add    esp,0x10
 8048dd5:	83 ec 0c             	sub    esp,0xc
 8048dd8:	8d 45 a0             	lea    eax,[ebp-0x60]
 8048ddb:	50                   	push   eax
 8048ddc:	e8 0e fd ff ff       	call   8048aef <init_stu>
 8048de1:	83 c4 10             	add    esp,0x10
 8048de4:	83 ec 04             	sub    esp,0x4
 8048de7:	6a 04                	push   0x4
 8048de9:	6a 00                	push   0x0
 8048deb:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 8048df1:	50                   	push   eax
 8048df2:	e8 f9 f8 ff ff       	call   80486f0 <memset@plt>
 8048df7:	83 c4 10             	add    esp,0x10
 8048dfa:	e8 3f fd ff ff       	call   8048b3e <menu>
 8048dff:	83 ec 04             	sub    esp,0x4
 8048e02:	6a 04                	push   0x4
 8048e04:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 8048e0a:	50                   	push   eax
 8048e0b:	6a 00                	push   0x0
 8048e0d:	e8 de f7 ff ff       	call   80485f0 <read@plt>
 8048e12:	83 c4 10             	add    esp,0x10
 8048e15:	83 ec 0c             	sub    esp,0xc
 8048e18:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
 8048e1e:	50                   	push   eax
 8048e1f:	e8 ec f8 ff ff       	call   8048710 <atoi@plt>
 8048e24:	83 c4 10             	add    esp,0x10
 8048e27:	83 f8 02             	cmp    eax,0x2
 8048e2a:	74 22                	je     8048e4e <func+0xeb>
 8048e2c:	83 f8 03             	cmp    eax,0x3
 8048e2f:	74 4c                	je     8048e7d <func+0x11a>
 8048e31:	83 f8 01             	cmp    eax,0x1
 8048e34:	0f 85 90 00 00 00    	jne    8048eca <func+0x167>
 8048e3a:	83 ec 0c             	sub    esp,0xc
 8048e3d:	8d 45 a0             	lea    eax,[ebp-0x60]
 8048e40:	50                   	push   eax
 8048e41:	e8 81 fd ff ff       	call   8048bc7 <view>
 8048e46:	83 c4 10             	add    esp,0x10
 8048e49:	e9 8d 00 00 00       	jmp    8048edb <func+0x178>
 8048e4e:	83 ec 08             	sub    esp,0x8
 8048e51:	ff 75 9c             	push   DWORD PTR [ebp-0x64]
 8048e54:	ff 75 98             	push   DWORD PTR [ebp-0x68]
 8048e57:	ff 75 94             	push   DWORD PTR [ebp-0x6c]
 8048e5a:	ff 75 90             	push   DWORD PTR [ebp-0x70]
 8048e5d:	ff 75 8c             	push   DWORD PTR [ebp-0x74]
 8048e60:	ff 75 88             	push   DWORD PTR [ebp-0x78]
 8048e63:	ff 75 84             	push   DWORD PTR [ebp-0x7c]
 8048e66:	ff 75 80             	push   DWORD PTR [ebp-0x80]
 8048e69:	ff b5 7c ff ff ff    	push   DWORD PTR [ebp-0x84]
 8048e6f:	8d 45 a0             	lea    eax,[ebp-0x60]
 8048e72:	50                   	push   eax
 8048e73:	e8 f0 fd ff ff       	call   8048c68 <edit_note>
 8048e78:	83 c4 30             	add    esp,0x30
 8048e7b:	eb 5e                	jmp    8048edb <func+0x178>
 8048e7d:	8d 85 78 ff ff ff    	lea    eax,[ebp-0x88]
 8048e83:	05 8c 00 00 00       	add    eax,0x8c
 8048e88:	8b 00                	mov    eax,DWORD PTR [eax]
 8048e8a:	ba e0 89 04 08       	mov    edx,0x80489e0
 8048e8f:	39 d0                	cmp    eax,edx
 8048e91:	74 4d                	je     8048ee0 <func+0x17d>
 8048e93:	8d 85 78 ff ff ff    	lea    eax,[ebp-0x88]
 8048e99:	05 8c 00 00 00       	add    eax,0x8c
 8048e9e:	8b 00                	mov    eax,DWORD PTR [eax]
 8048ea0:	ba 3b 88 04 08       	mov    edx,0x804883b
 8048ea5:	39 d0                	cmp    eax,edx
 8048ea7:	74 37                	je     8048ee0 <func+0x17d>
 8048ea9:	8d 85 78 ff ff ff    	lea    eax,[ebp-0x88]
 8048eaf:	05 8c 00 00 00       	add    eax,0x8c
 8048eb4:	8b 10                	mov    edx,DWORD PTR [eax]
 8048eb6:	8b 85 78 ff ff ff    	mov    eax,DWORD PTR [ebp-0x88]
 8048ebc:	39 c2                	cmp    edx,eax
 8048ebe:	74 20                	je     8048ee0 <func+0x17d>
 8048ec0:	83 ec 0c             	sub    esp,0xc
 8048ec3:	6a 01                	push   0x1
 8048ec5:	e8 a6 f7 ff ff       	call   8048670 <exit@plt>
 8048eca:	83 ec 0c             	sub    esp,0xc
 8048ecd:	68 b0 91 04 08       	push   0x80491b0
 8048ed2:	e8 79 f7 ff ff       	call   8048650 <puts@plt>
 8048ed7:	83 c4 10             	add    esp,0x10
 8048eda:	90                   	nop
 8048edb:	e9 1a ff ff ff       	jmp    8048dfa <func+0x97>
 8048ee0:	90                   	nop
 8048ee1:	c9                   	leave  
 8048ee2:	c3                   	ret    

08048ee3 <handler>:
 8048ee3:	55                   	push   ebp
 8048ee4:	89 e5                	mov    ebp,esp
 8048ee6:	83 ec 08             	sub    esp,0x8
 8048ee9:	83 ec 0c             	sub    esp,0xc
 8048eec:	68 c0 91 04 08       	push   0x80491c0
 8048ef1:	e8 5a f7 ff ff       	call   8048650 <puts@plt>
 8048ef6:	83 c4 10             	add    esp,0x10
 8048ef9:	83 ec 0c             	sub    esp,0xc
 8048efc:	6a 01                	push   0x1
 8048efe:	e8 0d f7 ff ff       	call   8048610 <_exit@plt>

08048f03 <main>:
 8048f03:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 8048f07:	83 e4 f0             	and    esp,0xfffffff0
 8048f0a:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 8048f0d:	55                   	push   ebp
 8048f0e:	89 e5                	mov    ebp,esp
 8048f10:	53                   	push   ebx
 8048f11:	51                   	push   ecx
 8048f12:	89 cb                	mov    ebx,ecx
 8048f14:	a1 a0 b0 04 08       	mov    eax,ds:0x804b0a0
 8048f19:	6a 00                	push   0x0
 8048f1b:	6a 02                	push   0x2
 8048f1d:	6a 00                	push   0x0
 8048f1f:	50                   	push   eax
 8048f20:	e8 bb f7 ff ff       	call   80486e0 <setvbuf@plt>
 8048f25:	83 c4 10             	add    esp,0x10
 8048f28:	a1 a4 b0 04 08       	mov    eax,ds:0x804b0a4
 8048f2d:	6a 00                	push   0x0
 8048f2f:	6a 02                	push   0x2
 8048f31:	6a 00                	push   0x0
 8048f33:	50                   	push   eax
 8048f34:	e8 a7 f7 ff ff       	call   80486e0 <setvbuf@plt>
 8048f39:	83 c4 10             	add    esp,0x10
 8048f3c:	a1 80 b0 04 08       	mov    eax,ds:0x804b080
 8048f41:	6a 00                	push   0x0
 8048f43:	6a 02                	push   0x2
 8048f45:	6a 00                	push   0x0
 8048f47:	50                   	push   eax
 8048f48:	e8 93 f7 ff ff       	call   80486e0 <setvbuf@plt>
 8048f4d:	83 c4 10             	add    esp,0x10
 8048f50:	83 ec 08             	sub    esp,0x8
 8048f53:	68 e3 8e 04 08       	push   0x8048ee3
 8048f58:	6a 0e                	push   0xe
 8048f5a:	e8 d1 f6 ff ff       	call   8048630 <signal@plt>
 8048f5f:	83 c4 10             	add    esp,0x10
 8048f62:	83 ec 0c             	sub    esp,0xc
 8048f65:	6a 3c                	push   0x3c
 8048f67:	e8 d4 f6 ff ff       	call   8048640 <alarm@plt>
 8048f6c:	83 c4 10             	add    esp,0x10
 8048f6f:	83 ec 0c             	sub    esp,0xc
 8048f72:	ff 73 08             	push   DWORD PTR [ebx+0x8]
 8048f75:	e8 ee fa ff ff       	call   8048a68 <delete_env>
 8048f7a:	83 c4 10             	add    esp,0x10
 8048f7d:	83 ec 04             	sub    esp,0x4
 8048f80:	6a 01                	push   0x1
 8048f82:	68 c8 91 04 08       	push   0x80491c8
 8048f87:	68 3a 90 04 08       	push   0x804903a
 8048f8c:	e8 1f f7 ff ff       	call   80486b0 <setenv@plt>
 8048f91:	83 c4 10             	add    esp,0x10
 8048f94:	e8 ca fd ff ff       	call   8048d63 <func>
 8048f99:	b8 00 00 00 00       	mov    eax,0x0
 8048f9e:	8d 65 f8             	lea    esp,[ebp-0x8]
 8048fa1:	59                   	pop    ecx
 8048fa2:	5b                   	pop    ebx
 8048fa3:	5d                   	pop    ebp
 8048fa4:	8d 61 fc             	lea    esp,[ecx-0x4]
 8048fa7:	c3                   	ret    
 8048fa8:	66 90                	xchg   ax,ax
 8048faa:	66 90                	xchg   ax,ax
 8048fac:	66 90                	xchg   ax,ax
 8048fae:	66 90                	xchg   ax,ax

08048fb0 <__libc_csu_init>:
 8048fb0:	55                   	push   ebp
 8048fb1:	57                   	push   edi
 8048fb2:	56                   	push   esi
 8048fb3:	53                   	push   ebx
 8048fb4:	e8 b7 f7 ff ff       	call   8048770 <__x86.get_pc_thunk.bx>
 8048fb9:	81 c3 47 20 00 00    	add    ebx,0x2047
 8048fbf:	83 ec 0c             	sub    esp,0xc
 8048fc2:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 8048fc6:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 8048fcc:	e8 cf f5 ff ff       	call   80485a0 <_init>
 8048fd1:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048fd7:	29 c6                	sub    esi,eax
 8048fd9:	c1 fe 02             	sar    esi,0x2
 8048fdc:	85 f6                	test   esi,esi
 8048fde:	74 25                	je     8049005 <__libc_csu_init+0x55>
 8048fe0:	31 ff                	xor    edi,edi
 8048fe2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048fe8:	83 ec 04             	sub    esp,0x4
 8048feb:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048fef:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048ff3:	55                   	push   ebp
 8048ff4:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048ffb:	83 c7 01             	add    edi,0x1
 8048ffe:	83 c4 10             	add    esp,0x10
 8049001:	39 f7                	cmp    edi,esi
 8049003:	75 e3                	jne    8048fe8 <__libc_csu_init+0x38>
 8049005:	83 c4 0c             	add    esp,0xc
 8049008:	5b                   	pop    ebx
 8049009:	5e                   	pop    esi
 804900a:	5f                   	pop    edi
 804900b:	5d                   	pop    ebp
 804900c:	c3                   	ret    
 804900d:	8d 76 00             	lea    esi,[esi+0x0]

08049010 <__libc_csu_fini>:
 8049010:	f3 c3                	repz ret 

Disassembly of section .fini:

08049014 <_fini>:
 8049014:	53                   	push   ebx
 8049015:	83 ec 08             	sub    esp,0x8
 8049018:	e8 53 f7 ff ff       	call   8048770 <__x86.get_pc_thunk.bx>
 804901d:	81 c3 e3 1f 00 00    	add    ebx,0x1fe3
 8049023:	83 c4 08             	add    esp,0x8
 8049026:	5b                   	pop    ebx
 8049027:	c3                   	ret    
