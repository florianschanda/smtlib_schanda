(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00111011 #b01110110111101001011100)))
;; x should be Float32(0x1DBB7A5C [Rational(3071639, 618970019642690137449562112), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 61432785593.0 12379400392853802748991242240000.0))))
;; w should be Float32(0x1DBB7A5D [Rational(12286557, 2475880078570760549798248448), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
