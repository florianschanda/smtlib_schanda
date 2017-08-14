(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b01101010 #b00100110001000111101011)))
;; x should be Float32(0x351311EB [Rational(9638379, 17592186044416), 0.000001])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 192767593693.0 351843720888320000.0))))
;; w should be Float32(0x351311EC [Rational(2409595, 4398046511104), 0.000001])

(assert (not (distinct x w)))
(check-sat)
(exit)
