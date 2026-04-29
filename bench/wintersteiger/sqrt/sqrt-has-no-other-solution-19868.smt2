(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5071847510429183802926900170859880745410919189453125p-995 {+ 2284157055804885 -995 (4.50112e-300)}
; 1.5071847510429183802926900170859880745410919189453125p-995 S == 1.7361939701789765866379866565694101154804229736328125p-498
; [HW: 1.7361939701789765866379866565694101154804229736328125p-498] 

; mpf : + 3315522889770445 -498
; mpfd: + 3315522889770445 -498 (2.12158e-150) class: Pos. norm. non-zero
; hwf : + 3315522889770445 -498 (2.12158e-150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011100 #b1000000111010110110111000001111011000010010111010101)))
(assert (= r (fp #b0 #b01000001101 #b1011110001110111001101010100000101101110010111001101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
