(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x1CD80924)))
;; x should be Float32(0x1CD80924 [Rational(3539529, 2475880078570760549798248448), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 17697648031.0 12379400392853802748991242240000.0))))
;; w should be Float32(0x1CD80927 [Rational(14158119, 9903520314283042199192993792), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
