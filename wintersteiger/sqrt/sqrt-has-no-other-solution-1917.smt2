(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.993472059372419113998375905794091522693634033203125p356 {+ 4474200396392626 356 (2.9261e+107)}
; 1.993472059372419113998375905794091522693634033203125p356 S == 1.411903700459921306986643685377202928066253662109375p178
; [HW: 1.411903700459921306986643685377202928066253662109375p178] 

; mpf : + 1855049351903830 178
; mpfd: + 1855049351903830 178 (5.40934e+053) class: Pos. norm. non-zero
; hwf : + 1855049351903830 178 (5.40934e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100011 #b1111111001010100001011110101010001111110100010110010)))
(assert (= r (fp #b0 #b10010110001 #b0110100101110010100001010101101010010011101001010110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
