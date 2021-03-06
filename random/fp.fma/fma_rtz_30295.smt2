(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0EB0F03F)))
;; x should be Float32(0x0EB0F03F [Rational(11595839, 2658455991569831745807614120560689152), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x806719FE)))
;; y should be Float32(0x806719FE [Rational(-3378431, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b01100000100110110010001)))
;; z should be Float32(0x00304D91 [Rational(3165585, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #x00304D90)))
(check-sat)
(exit)
