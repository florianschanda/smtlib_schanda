(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00011001111000001111010)))
;; x should be Float32(0x000CF07A [Rational(423997, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 1891090923700927685988273916548926973927631189421269.0 1591434356511317254897223194069826688321459682551512695809484726058110390440106801705779200.0))))
;; w should be Float32(0x000CF07A [Rational(423997, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
