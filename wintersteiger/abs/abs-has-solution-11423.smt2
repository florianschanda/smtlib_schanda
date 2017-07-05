(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4126191887012140568913309834897518157958984375p-604 {+ 1858271624480704 -604 (2.12769e-182)}
; 1.4126191887012140568913309834897518157958984375p-604 | == 1.4126191887012140568913309834897518157958984375p-604
; [HW: 1.4126191887012140568913309834897518157958984375p-604] 

; mpf : + 1858271624480704 -604
; mpfd: + 1858271624480704 -604 (2.12769e-182) class: Pos. norm. non-zero
; hwf : + 1858271624480704 -604 (2.12769e-182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110100011 #b0110100110100001011010010100000100101100011111000000)))
(assert (= r (fp #b0 #b00110100011 #b0110100110100001011010010100000100101100011111000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
