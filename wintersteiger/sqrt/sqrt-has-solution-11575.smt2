(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.192200342637331100803521621855907142162322998046875p402 {+ 865593391481966 402 (1.23142e+121)}
; 1.192200342637331100803521621855907142162322998046875p402 S == 1.0918792710905960152700799881131388247013092041015625p201
; [HW: 1.0918792710905960152700799881131388247013092041015625p201] 

; mpf : + 413787451046681 201
; mpfd: + 413787451046681 201 (3.50916e+060) class: Pos. norm. non-zero
; hwf : + 413787451046681 201 (3.50916e+060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010001 #b0011000100110100000010101010100111101000010001101110)))
(assert (= r (fp #b0 #b10011001000 #b0001011110000101011001100110000010000011101100011001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
