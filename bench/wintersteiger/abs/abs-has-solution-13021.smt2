(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.25106865869485783804293532739393413066864013671875p-548 {- 1130712717742572 -548 (-1.35782e-165)}
; -1.25106865869485783804293532739393413066864013671875p-548 | == 1.25106865869485783804293532739393413066864013671875p-548
; [HW: 1.25106865869485783804293532739393413066864013671875p-548] 

; mpf : + 1130712717742572 -548
; mpfd: + 1130712717742572 -548 (1.35782e-165) class: Pos. norm. non-zero
; hwf : + 1130712717742572 -548 (1.35782e-165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011011 #b0100000001000110000010010001111000100101000111101100)))
(assert (= r (fp #b0 #b00111011011 #b0100000001000110000010010001111000100101000111101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
