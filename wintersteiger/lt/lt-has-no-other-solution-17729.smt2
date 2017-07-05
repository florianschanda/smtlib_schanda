(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.270523096778549909657840544241480529308319091796875p-800 {+ 1218327717846990 -800 (1.9054e-241)}
; Y = 1.643663917799594198498880359693430364131927490234375p-69 {+ 2898804580354086 -69 (2.78447e-021)}
; 1.270523096778549909657840544241480529308319091796875p-800 < 1.643663917799594198498880359693430364131927490234375p-69 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011111 #b0100010101000001000000000110110101111001111111001110)))
(assert (= y (fp #b0 #b01110111010 #b1010010011000111001010001001010010010000100000100110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
