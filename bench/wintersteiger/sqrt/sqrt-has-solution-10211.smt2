(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7151170600471730143254944778163917362689971923828125p-795 {+ 3220600925154733 -795 (8.2309e-240)}
; 1.7151170600471730143254944778163917362689971923828125p-795 S == 1.8520891231510285823702588459127582609653472900390625p-398
; [HW: 1.8520891231510285823702588459127582609653472900390625p-398] 

; mpf : + 3837468257509425 -398
; mpfd: + 3837468257509425 -398 (2.86895e-120) class: Pos. norm. non-zero
; hwf : + 3837468257509425 -398 (2.86895e-120) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100100 #b1011011100010001111010010110000110110110110110101101)))
(assert (= r (fp #b0 #b01001110001 #b1101101000100010100000110100010100110110000000110001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
