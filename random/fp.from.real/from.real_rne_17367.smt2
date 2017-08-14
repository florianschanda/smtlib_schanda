(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b01101011 #b10001101101011111111110)))
;; x should be Float32(0x35C6D7FE [Rational(6515711, 4398046511104), 0.000001])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 65157114447.0 43980465111040000.0))))
;; w should be Float32(0x35C6D7FF [Rational(13031423, 8796093022208), 0.000001])

(assert (not (distinct x w)))
(check-sat)
(exit)
