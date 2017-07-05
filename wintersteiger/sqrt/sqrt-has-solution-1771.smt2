(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.810457120291013577428884673281572759151458740234375p76 {+ 3649974384942374 76 (1.36794e+023)}
; 1.810457120291013577428884673281572759151458740234375p76 S == 1.3455322814005665765790809018653817474842071533203125p38
; [HW: 1.3455322814005665765790809018653817474842071533203125p38] 

; mpf : + 1556139053760069 38
; mpfd: + 1556139053760069 38 (3.69857e+011) class: Pos. norm. non-zero
; hwf : + 1556139053760069 38 (3.69857e+011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001011 #b1100111101111010000111100010101001110101110100100110)))
(assert (= r (fp #b0 #b10000100101 #b0101100001110100110011011011100001010011111001000101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
