(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b01111101000001010001100)))
;; x should be Float32(0x80BE828C [Rational(-3121315, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b10110100110001101110110)))
;; y should be Float32(0x005A6376 [Rational(2961851, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00000000000000000000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (_ +zero 8 24)))
(check-sat)
(exit)
