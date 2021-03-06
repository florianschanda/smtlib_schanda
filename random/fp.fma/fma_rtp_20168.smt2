(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8027C111)))
;; x should be Float32(0x8027C111 [Rational(-2605329, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xF61B9B90)))
;; y should be Float32(0xF61B9B90 [Rational(-789024604899283540432179907526656), -789024604899283540432179907526656.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b01100001011001011011110)))
;; z should be Float32(0x0030B2DE [Rational(1595759, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x3641506D))))
(check-sat)
(exit)
