(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11000001101110010010100)))
;; x should be Float32(0x4AE0DC94 [Rational(7368266), 7368266.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 7368266

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011100000110111001001010))
;; z should be 7368266

(assert (not (= y z)))
(check-sat)
(exit)
