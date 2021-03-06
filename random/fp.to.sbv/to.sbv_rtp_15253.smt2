(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b00110101010010110110110)))
;; x should be Float32(0xCA1AA5B6 [Rational(-5067483, 2), -2533741.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -2533741

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110110010101011010010011))
;; z should be -2533741

(assert (not (= y z)))
(check-sat)
(exit)
