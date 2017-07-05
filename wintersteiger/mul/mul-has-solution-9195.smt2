(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8687145021574382841578199077048338949680328369140625p847 {- 3912342308207585 847 (-1.75368e+255)}
; Y = 1.6652754545331571733868258888833224773406982421875p-391 {+ 2996134289134264 -391 (3.30185e-118)}
; -1.8687145021574382841578199077048338949680328369140625p847 * 1.6652754545331571733868258888833224773406982421875p-391 == -1.5559621959864653462091155233792960643768310546875p457
; [HW: -1.5559621959864653462091155233792960643768310546875p457] 

; mpf : - 2503831138676728 457
; mpfd: - 2503831138676728 457 (-5.79038e+137) class: Neg. norm. non-zero
; hwf : - 2503831138676728 457 (-5.79038e+137) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001110 #b1101111001100100000100101101100001010011101111100001)))
(assert (= y (fp #b0 #b01001111000 #b1010101001001111011111100000000000001101001010111000)))
(assert (= r (fp #b1 #b10111001000 #b1000111001010011100010011101100110010010111111111000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
