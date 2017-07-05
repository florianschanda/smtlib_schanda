(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.49144151126864699108409695327281951904296875p-850 {+ 2213255807023872 -850 (1.9866e-256)}
; 1.49144151126864699108409695327281951904296875p-850 S == 1.221245884852287577615470581804402172565460205078125p-425
; [HW: 1.221245884852287577615470581804402172565460205078125p-425] 

; mpf : + 996402884578018 -425
; mpfd: + 996402884578018 -425 (1.40947e-128) class: Pos. norm. non-zero
; hwf : + 996402884578018 -425 (1.40947e-128) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010101101 #b0111110111001111000111000110001011001011101100000000)))
(assert (= r (fp #b0 #b01001010110 #b0011100010100011100100011111111111010000101011100010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
