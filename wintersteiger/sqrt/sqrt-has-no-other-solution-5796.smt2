(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5265861711731487648791016908944584429264068603515625p707 {+ 2371533284273849 707 (1.02785e+213)}
; 1.5265861711731487648791016908944584429264068603515625p707 S == 1.7473329225841016665299321175552904605865478515625p353
; [HW: 1.7473329225841016665299321175552904605865478515625p353] 

; mpf : + 3365688271671464 353
; mpfd: + 3365688271671464 353 (3.206e+106) class: Pos. norm. non-zero
; hwf : + 3365688271671464 353 (3.206e+106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000010 #b1000011011001110010110011110111110110110111010111001)))
(assert (= r (fp #b0 #b10101100000 #b1011111101010001001101011101110110111001000010101000)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
