(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x1CD80924)))
;; x should be Float32(0x1CD80924 [Rational(3539529, 2475880078570760549798248448), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 876344906227923774720200918328013109.0 612998216346355543343338810860123673447495648873440870400.0))))
;; w should be Float32(0x1CD80924 [Rational(3539529, 2475880078570760549798248448), 0.000000])

(assert (= x w))
(check-sat)
(exit)
