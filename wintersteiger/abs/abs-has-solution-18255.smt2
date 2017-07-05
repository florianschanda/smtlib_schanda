(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.214886743609424168965915669105015695095062255859375p-812 {- 967763858446262 -812 (-4.44815e-245)}
; -1.214886743609424168965915669105015695095062255859375p-812 | == 1.214886743609424168965915669105015695095062255859375p-812
; [HW: 1.214886743609424168965915669105015695095062255859375p-812] 

; mpf : + 967763858446262 -812
; mpfd: + 967763858446262 -812 (4.44815e-245) class: Pos. norm. non-zero
; hwf : + 967763858446262 -812 (4.44815e-245) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011010011 #b0011011100000010110100010101000000100101011110110110)))
(assert (= r (fp #b0 #b00011010011 #b0011011100000010110100010101000000100101011110110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
