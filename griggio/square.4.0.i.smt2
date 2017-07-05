(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:54

(declare-fun |c::main::1::IN!0@1#0| () (_ FloatingPoint 8 24))
(define-fun _t_3 () RoundingMode RNE)
(define-fun _t_9 () (_ FloatingPoint 8 24) |c::main::1::IN!0@1#0|)
(define-fun _t_11 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00000000000000000000000))
(define-fun _t_12 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_11))
(define-fun _t_14 () (_ FloatingPoint 8 24) (fp #b0 #b01111111 #b00000000000000000000000))
(define-fun _t_15 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_12 _t_14))
(define-fun _t_17 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b00000000000000000000000))
(define-fun _t_18 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_17))
(define-fun _t_19 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_18))
(define-fun _t_20 () (_ FloatingPoint 8 24) (fp.neg _t_19))
(define-fun _t_21 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_15 _t_20))
(define-fun _t_23 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b00000000000000000000000))
(define-fun _t_24 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_23))
(define-fun _t_25 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_24))
(define-fun _t_26 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_25))
(define-fun _t_27 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_21 _t_26))
(define-fun _t_29 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b01000000000000000000000))
(define-fun _t_30 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_29))
(define-fun _t_31 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_30))
(define-fun _t_32 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_31))
(define-fun _t_33 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_9 _t_32))
(define-fun _t_34 () (_ FloatingPoint 8 24) (fp.neg _t_33))
(define-fun _t_35 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_27 _t_34))
(define-fun _t_37 () (_ FloatingPoint 8 24) (fp #b0 #b00000000 #b00000000000000000000000))
(define-fun _t_38 () Bool (fp.leq _t_37 _t_35))
(define-fun _t_39 () Bool (not _t_38))
(define-fun _t_41 () (_ FloatingPoint 8 24) (fp #b0 #b01111111 #b01100110000000000010101))
(define-fun _t_42 () Bool (fp.lt _t_35 _t_41))
(define-fun _t_43 () Bool (not _t_42))
(define-fun _t_44 () Bool (fp.lt _t_9 _t_14))
(define-fun _t_45 () Bool (fp.leq _t_37 _t_9))
(define-fun _t_46 () Bool (and _t_44 _t_45))
(define-fun _t_47 () Bool (and _t_43 _t_46))
(define-fun _t_48 () Bool (and _t_39 _t_47))
(assert _t_48)
(check-sat)
(exit)
