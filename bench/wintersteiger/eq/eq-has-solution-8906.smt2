(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4926778233320894262448064182535745203495025634765625p616 {- 2218823661572105 616 (-4.05923e+185)}
; Y = -1.6908746162954664260524850760702975094318389892578125p766 {- 3111422664507997 766 (-6.56278e+230)}
; -1.4926778233320894262448064182535745203495025634765625p616 = -1.6908746162954664260524850760702975094318389892578125p766 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001100111 #b0111111000100000001000100100001010101101000000001001)))
(assert (= y (fp #b1 #b11011111101 #b1011000011011101001010001010101010100000001001011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
