(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8039EFD9)))
;; x should be Float32(0x8039EFD9 [Rational(-3796953, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b01011110 #b01100100100011011000000)))
;; z should be Float32(0x2F3246C0 [Rational(182555, 1125899906842624), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #x2F3246C0)))
(check-sat)
(exit)
