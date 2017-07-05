(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.796075686206218602336548428866080939769744873046875p-106 {+ 3585206163757038 -106 (2.21383e-032)}
; 1.796075686206218602336548428866080939769744873046875p-106 | == 1.796075686206218602336548428866080939769744873046875p-106
; [HW: 1.796075686206218602336548428866080939769744873046875p-106] 

; mpf : + 3585206163757038 -106
; mpfd: + 3585206163757038 -106 (2.21383e-032) class: Pos. norm. non-zero
; hwf : + 3585206163757038 -106 (2.21383e-032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010101 #b1100101111001011100111011011110101100101011111101110)))
(assert (= r (fp #b0 #b01110010101 #b1100101111001011100111011011110101100101011111101110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
