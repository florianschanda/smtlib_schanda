(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x12FB0728)))
;; x should be Float32(0x12FB0728 [Rational(2056421, 1298074214633706907132624082305024), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 215466496497.0 207691874341393105141219853168803840000.0))))
;; w should be Float32(0x12A4634D [Rational(10773325, 10384593717069655257060992658440192), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
