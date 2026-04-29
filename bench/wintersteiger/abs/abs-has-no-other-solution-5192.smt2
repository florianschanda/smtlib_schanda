(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.544313405543991546409188231336884200572967529296875p609 {- 2451369650380686 609 (-3.28097e+183)}
; -1.544313405543991546409188231336884200572967529296875p609 | == 1.544313405543991546409188231336884200572967529296875p609
; [HW: 1.544313405543991546409188231336884200572967529296875p609] 

; mpf : + 2451369650380686 609
; mpfd: + 2451369650380686 609 (3.28097e+183) class: Pos. norm. non-zero
; hwf : + 2451369650380686 609 (3.28097e+183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001100000 #b1000101101011000000111111001001110010101111110001110)))
(assert (= r (fp #b0 #b11001100000 #b1000101101011000000111111001001110010101111110001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
