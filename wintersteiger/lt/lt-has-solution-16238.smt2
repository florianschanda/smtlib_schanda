(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3413152211601830909870614050305448472499847412109375p872 {+ 1537147102832879 872 (4.22364e+262)}
; Y = 1.3227885599081845580116123528569005429744720458984375p-914 {+ 1453710438121959 -914 (9.55156e-276)}
; 1.3413152211601830909870614050305448472499847412109375p872 < 1.3227885599081845580116123528569005429744720458984375p-914 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101100111 #b0101011101100000011011110011000010000010100011101111)))
(assert (= y (fp #b0 #b00001101101 #b0101001010100010010001010110010001010100000111100111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
