(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x177B8D18)))
;; x should be Float32(0x177B8D18 [Rational(2060707, 2535301200456458802993406410752), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x84F05EA1)))
;; y should be Float32(0x84F05EA1 [Rational(-15752865, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #xD205F44C))))
(check-sat)
(exit)
