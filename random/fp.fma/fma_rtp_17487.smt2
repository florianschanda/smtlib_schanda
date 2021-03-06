(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10111011111101111000110)))
;; x should be Float32(0xCA5DFBC6 [Rational(-7273955, 2), -3636977.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00435256)))
;; y should be Float32(0x00435256 [Rational(2205995, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x8AE98128)))
(check-sat)
(exit)
