(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1727261951175422804993786485283635556697845458984375 183 {+ 777889627968487 183 (1.43776e+055)}
; 1.1727261951175422804993786485283635556697845458984375 183 I == 1.1727261951175422804993786485283635556697845458984375 183
; [HW: 1.1727261951175422804993786485283635556697845458984375 183] 

; mpf : + 777889627968487 183
; mpfd: + 777889627968487 183 (1.43776e+055) class: Pos. norm. non-zero
; hwf : + 777889627968487 183 (1.43776e+055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110110 #b0010110000110111110010001010111100110001001111100111)))
(assert (= r (fp #b0 #b10010110110 #b0010110000110111110010001010111100110001001111100111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
