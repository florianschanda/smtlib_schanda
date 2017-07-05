(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.380336621537416430527400734717957675457000732421875p352 {- 1712883867031262 352 (-1.26632e+106)}
; Y = -1.6305914532224352608835715727764181792736053466796875p-47 {- 2839931433755579 -47 (-1.1586e-014)}
; -1.380336621537416430527400734717957675457000732421875p352 = -1.6305914532224352608835715727764181792736053466796875p-47 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101011111 #b0110000101011101101111011010011011111001011011011110)))
(assert (= y (fp #b1 #b01111010000 #b1010000101101110011100010000010010111010001110111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
