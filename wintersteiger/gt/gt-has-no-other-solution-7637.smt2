(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.59311834682426312070901985862292349338531494140625p-891 {- 2671167565744356 -891 (-9.64988e-269)}
; Y = 1.981600290631298388888126282836310565471649169921875p843 {+ 4420734703113886 843 (1.16226e+254)}
; -1.59311834682426312070901985862292349338531494140625p-891 > 1.981600290631298388888126282836310565471649169921875p843 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000100 #b1001011111010110100110101001111001000100100011100100)))
(assert (= y (fp #b0 #b11101001010 #b1111101101001010001010000001101000000001011010011110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
