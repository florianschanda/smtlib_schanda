(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.34781202847346381901161294081248342990875244140625 668 {- 1566406121828068 668 (-1.65069e+201)}
; -1.34781202847346381901161294081248342990875244140625 668 I == -1.34781202847346381901161294081248342990875244140625 668
; [HW: -1.34781202847346381901161294081248342990875244140625 668] 

; mpf : - 1566406121828068 668
; mpfd: - 1566406121828068 668 (-1.65069e+201) class: Neg. norm. non-zero
; hwf : - 1566406121828068 668 (-1.65069e+201) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011011 #b0101100100001010001101011000011101110010111011100100)))
(assert (= r (fp #b1 #b11010011011 #b0101100100001010001101011000011101110010111011100100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
