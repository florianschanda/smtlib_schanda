(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF8AC6B56)))
;; x should be Float32(0xF8AC6B56 [Rational(-27976627847423665861738774040412160), -27976627847423665861738774040412160.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 15323518122589115487876950005955994.0)))
;; w should be Float32(0x783CE07F [Rational(15323517673943826248587060535361536), 15323517673943826248587060535361536.000000])

(assert (distinct x w))
(check-sat)
(exit)
