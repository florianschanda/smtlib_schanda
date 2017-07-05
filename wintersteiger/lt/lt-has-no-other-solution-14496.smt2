(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.276395327980037297521676009637303650379180908203125p6 {+ 1244773896097842 6 (81.6893)}
; Y = 1.60134984153452730737399178906343877315521240234375p929 {+ 2708238922254204 929 (7.26695e+279)}
; 1.276395327980037297521676009637303650379180908203125p6 < 1.60134984153452730737399178906343877315521240234375p929 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000000101 #b0100011011000001110110000001111001110001000000110010)))
(assert (= y (fp #b0 #b11110100000 #b1001100111110010000100000010111011011000011101111100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
