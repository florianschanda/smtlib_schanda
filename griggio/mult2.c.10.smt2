(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:52

(declare-fun b41 () (_ FloatingPoint 8 24))
(declare-fun b23 () (_ FloatingPoint 8 24))
(declare-fun b26 () (_ FloatingPoint 8 24))
(declare-fun b72 () (_ FloatingPoint 8 24))
(declare-fun b32 () (_ FloatingPoint 8 24))
(declare-fun b14 () (_ FloatingPoint 8 24))
(declare-fun b35 () (_ FloatingPoint 8 24))
(declare-fun b29 () (_ FloatingPoint 8 24))
(declare-fun b69 () (_ FloatingPoint 8 24))
(declare-fun b11 () (_ FloatingPoint 8 24))
(declare-fun b38 () (_ FloatingPoint 8 24))
(declare-fun b10 () (_ FloatingPoint 8 24))
(declare-fun b20 () (_ FloatingPoint 8 24))
(declare-fun b17 () (_ FloatingPoint 8 24))
(define-fun _t_3 () RoundingMode RNE)
(define-fun _t_9 () (_ FloatingPoint 8 24) b69)
(define-fun _t_10 () (_ FloatingPoint 8 24) b11)
(define-fun _t_11 () Bool (fp.lt _t_9 _t_10))
(define-fun _t_12 () (_ FloatingPoint 8 24) b10)
(define-fun _t_13 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_10 _t_12))
(define-fun _t_14 () (_ FloatingPoint 8 24) b14)
(define-fun _t_15 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_14))
(define-fun _t_16 () (_ FloatingPoint 8 24) b17)
(define-fun _t_17 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_15 _t_16))
(define-fun _t_18 () (_ FloatingPoint 8 24) b20)
(define-fun _t_19 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_18))
(define-fun _t_20 () (_ FloatingPoint 8 24) b23)
(define-fun _t_21 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_19 _t_20))
(define-fun _t_22 () (_ FloatingPoint 8 24) b26)
(define-fun _t_23 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_22))
(define-fun _t_24 () (_ FloatingPoint 8 24) b29)
(define-fun _t_25 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_23 _t_24))
(define-fun _t_26 () (_ FloatingPoint 8 24) b32)
(define-fun _t_27 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_26))
(define-fun _t_28 () (_ FloatingPoint 8 24) b35)
(define-fun _t_29 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_27 _t_28))
(define-fun _t_30 () (_ FloatingPoint 8 24) b38)
(define-fun _t_31 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_30))
(define-fun _t_32 () (_ FloatingPoint 8 24) b41)
(define-fun _t_33 () Bool (fp.lt _t_31 _t_32))
(define-fun _t_34 () Bool (and _t_11 _t_33))
(define-fun _t_35 () (_ FloatingPoint 8 24) b72)
(define-fun _t_36 () Bool (fp.lt _t_10 _t_35))
(define-fun _t_37 () Bool (and _t_34 _t_36))
(define-fun _t_38 () Bool (fp.lt _t_9 _t_14))
(define-fun _t_39 () Bool (and _t_37 _t_38))
(define-fun _t_40 () Bool (fp.lt _t_14 _t_35))
(define-fun _t_41 () Bool (and _t_39 _t_40))
(define-fun _t_42 () Bool (fp.lt _t_9 _t_16))
(define-fun _t_43 () Bool (and _t_41 _t_42))
(define-fun _t_44 () Bool (fp.lt _t_16 _t_35))
(define-fun _t_45 () Bool (and _t_43 _t_44))
(define-fun _t_46 () Bool (fp.lt _t_9 _t_18))
(define-fun _t_47 () Bool (and _t_45 _t_46))
(define-fun _t_48 () Bool (fp.lt _t_18 _t_35))
(define-fun _t_49 () Bool (and _t_47 _t_48))
(define-fun _t_50 () Bool (fp.lt _t_9 _t_20))
(define-fun _t_51 () Bool (and _t_49 _t_50))
(define-fun _t_52 () Bool (fp.lt _t_20 _t_35))
(define-fun _t_53 () Bool (and _t_51 _t_52))
(define-fun _t_54 () Bool (fp.lt _t_9 _t_22))
(define-fun _t_55 () Bool (and _t_53 _t_54))
(define-fun _t_56 () Bool (fp.lt _t_22 _t_35))
(define-fun _t_57 () Bool (and _t_55 _t_56))
(define-fun _t_58 () Bool (fp.lt _t_9 _t_24))
(define-fun _t_59 () Bool (and _t_57 _t_58))
(define-fun _t_60 () Bool (fp.lt _t_24 _t_35))
(define-fun _t_61 () Bool (and _t_59 _t_60))
(define-fun _t_62 () Bool (fp.lt _t_9 _t_26))
(define-fun _t_63 () Bool (and _t_61 _t_62))
(define-fun _t_64 () Bool (fp.lt _t_26 _t_35))
(define-fun _t_65 () Bool (and _t_63 _t_64))
(define-fun _t_66 () Bool (fp.lt _t_9 _t_28))
(define-fun _t_67 () Bool (and _t_65 _t_66))
(define-fun _t_68 () Bool (fp.lt _t_28 _t_35))
(define-fun _t_69 () Bool (and _t_67 _t_68))
(define-fun _t_70 () Bool (fp.lt _t_9 _t_30))
(define-fun _t_71 () Bool (and _t_69 _t_70))
(define-fun _t_72 () Bool (fp.lt _t_30 _t_35))
(define-fun _t_73 () Bool (and _t_71 _t_72))
(assert _t_73)
(check-sat)
(exit)
