(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RTZ halfpoint_int)
(declare-const x Int)
(assert (= x (- 281617677501408399316677757416480178176)))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xFF53DD97 [Rational(-281617667360203597490842545442854535168), -281617667360203597490842545442854535168.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111110 #b10100111101110110010111)))
(assert (= y z))
