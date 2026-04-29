(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00100101 #b11110110000011100101000)))
;; x should be Float32(0x12FB0728 [Rational(2056421, 1298074214633706907132624082305024), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 82256842803.0 51922968585348276285304963292200960000.0))))
;; w should be Float32(0x12FB0729 [Rational(16451369, 10384593717069655257060992658440192), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
