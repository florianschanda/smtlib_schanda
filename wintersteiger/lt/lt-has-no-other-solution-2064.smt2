(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8959514494729690081697981440811417996883392333984375p238 {+ 4035006613988519 238 (8.37464e+071)}
; Y = 1.1414866160758314617140740665490739047527313232421875p859 {+ 637199071437027 859 (4.3877e+258)}
; 1.8959514494729690081697981440811417996883392333984375p238 < 1.1414866160758314617140740665490739047527313232421875p859 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011101101 #b1110010101011101000100101111111001001010010010100111)))
(assert (= y (fp #b0 #b11101011010 #b0010010000111000011101111000010011011110000011100011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
