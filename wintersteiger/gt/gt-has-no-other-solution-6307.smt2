(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.675589600446679927614468397223390638828277587890625p-175 {+ 3042585072827050 -175 (3.49879e-053)}
; Y = 1.2935470167660578777457658361527137458324432373046875p506 {+ 1322018235323339 506 (2.70994e+152)}
; 1.675589600446679927614468397223390638828277587890625p-175 > 1.2935470167660578777457658361527137458324432373046875p506 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101010000 #b1010110011110011011100001010011101101111101010101010)))
(assert (= y (fp #b0 #b10111111001 #b0100101100100101111001011011010011011001001111001011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
