(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000110 #b01111110110010000101010)))
;; x should be Float32(0x833F642A [Rational(-6271509, 11150372599265311570767859136324180752990208), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 6987577989.0 223007451985306231415357182726483615059804160000.0))))
;; w should be Float32(0x012A985D [Rational(11180125, 356811923176489970264571492362373784095686656), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
