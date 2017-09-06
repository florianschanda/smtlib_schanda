(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A83D7AB)))
;; x should be Float32(0x4A83D7AB [Rational(8640427, 2), 4320213.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 4320213

(declare-const z Int)
(assert (= z 4320213))
(assert (not (= y z)))
