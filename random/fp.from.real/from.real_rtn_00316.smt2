(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10101000011101111101011)))
;; x should be Float32(0x4AD43BEB [Rational(13908971, 2), 6954485.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 54660013.0 8.0)))))
;; w should be Float32(0xCAD082EC [Rational(-6832502), -6832502.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
