(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ACF684B)))
;; x should be Float32(0x4ACF684B [Rational(13592651, 2), 6796325.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 6796328.0)))
;; w should be Float32(0x4ACF6850 [Rational(6796328), 6796328.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
