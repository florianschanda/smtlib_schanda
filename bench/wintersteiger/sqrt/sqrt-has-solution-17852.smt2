(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6936723068386905222126870285137556493282318115234375p-189 {+ 3124022342595959 -189 (2.15854e-057)}
; 1.6936723068386905222126870285137556493282318115234375p-189 S == 1.8404740187455461697396685849525965750217437744140625p-95
; [HW: 1.8404740187455461697396685849525965750217437744140625p-95] 

; mpf : + 3785158477637025 -95
; mpfd: + 3785158477637025 -95 (4.64601e-029) class: Pos. norm. non-zero
; hwf : + 3785158477637025 -95 (4.64601e-029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101000010 #b1011000110010100100000100010000000000011010101110111)))
(assert (= r (fp #b0 #b01110100000 #b1101011100101001010011100010011110100110010110100001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
