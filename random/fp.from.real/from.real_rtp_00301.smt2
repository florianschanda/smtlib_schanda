(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10111100000101011001010)))
;; x should be Float32(0x805E0ACA [Rational(-3081573, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 6872138167205552433192493266873831345784896012092121.0 795717178255658627448611597034913344160729841275756347904742363029055195220053400852889600.0)))))
;; w should be Float32(0x805E0ACA [Rational(-3081573, 356811923176489970264571492362373784095686656), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
