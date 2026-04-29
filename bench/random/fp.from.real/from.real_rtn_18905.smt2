(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000011010111011000100)))
;; x should be Float32(0x0001AEC4 [Rational(27569, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 122962431509819747303006998166473068082046734569739.0 795717178255658627448611597034913344160729841275756347904742363029055195220053400852889600.0))))
;; w should be Float32(0x0001AEC4 [Rational(27569, 178405961588244985132285746181186892047843328), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
