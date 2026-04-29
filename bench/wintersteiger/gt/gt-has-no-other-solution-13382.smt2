(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.929869427834367545671057087020017206668853759765625p280 {+ 4187759608698074 280 (3.7491e+084)}
; Y = 1.192135754104544975717772103962488472461700439453125p-951 {+ 865302510589778 -951 (6.26325e-287)}
; 1.929869427834367545671057087020017206668853759765625p280 > 1.192135754104544975717772103962488472461700439453125p-951 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010111 #b1110111000001011111011000011111000011001010011011010)))
(assert (= y (fp #b0 #b00001001000 #b0011000100101111110011110000110001000101011101010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
