(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AE0DC96)))
;; x should be Float32(0x4AE0DC96 [Rational(7368267), 7368267.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 7368267

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011100000110111001001011))
;; z should be 7368267

(assert (not (= y z)))
(check-sat)
(exit)
