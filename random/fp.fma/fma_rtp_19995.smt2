(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10001001110011011110110)))
;; x should be Float32(0x8044E6F6 [Rational(-2257787, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x47DAF23E)))
;; y should be Float32(0x47DAF23E [Rational(7174431, 64), 112100.484375])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b1 #b00010000 #b11010111011011110000010))))
(check-sat)
(exit)
