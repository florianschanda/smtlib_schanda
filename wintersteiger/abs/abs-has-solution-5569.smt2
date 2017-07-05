(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.184383078331771255164994727238081395626068115234375p-309 {+ 830387562868390 -309 (1.1356e-093)}
; 1.184383078331771255164994727238081395626068115234375p-309 | == 1.184383078331771255164994727238081395626068115234375p-309
; [HW: 1.184383078331771255164994727238081395626068115234375p-309] 

; mpf : + 830387562868390 -309
; mpfd: + 830387562868390 -309 (1.1356e-093) class: Pos. norm. non-zero
; hwf : + 830387562868390 -309 (1.1356e-093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001010 #b0010111100110011101110101011101101011110111010100110)))
(assert (= r (fp #b0 #b01011001010 #b0010111100110011101110101011101101011110111010100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
