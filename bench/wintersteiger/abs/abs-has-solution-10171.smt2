(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0493189410069232447852982659242115914821624755859375p871 {+ 222112764341087 871 (1.65209e+262)}
; 1.0493189410069232447852982659242115914821624755859375p871 | == 1.0493189410069232447852982659242115914821624755859375p871
; [HW: 1.0493189410069232447852982659242115914821624755859375p871] 

; mpf : + 222112764341087 871
; mpfd: + 222112764341087 871 (1.65209e+262) class: Pos. norm. non-zero
; hwf : + 222112764341087 871 (1.65209e+262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100110 #b0000110010100000001010101000011010110010101101011111)))
(assert (= r (fp #b0 #b11101100110 #b0000110010100000001010101000011010110010101101011111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
