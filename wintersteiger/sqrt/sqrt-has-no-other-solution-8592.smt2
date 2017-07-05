(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.991283270055627330208380953990854322910308837890625p381 {+ 4464342965641130 381 (9.80757e+114)}
; 1.991283270055627330208380953990854322910308837890625p381 S == 1.99563687581464943576747828046791255474090576171875p190
; [HW: 1.99563687581464943576747828046791255474090576171875p190] 

; mpf : + 4483949862915180 190
; mpfd: + 4483949862915180 190 (3.1317e+057) class: Pos. norm. non-zero
; hwf : + 4483949862915180 190 (3.1317e+057) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111100 #b1111110111000100101111011000100111110101111110101010)))
(assert (= r (fp #b0 #b10010111101 #b1111111011100010000011101110110001010000110001101100)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
