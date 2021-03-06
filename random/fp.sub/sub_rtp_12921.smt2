(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB84B886D)))
;; x should be Float32(0xB84B886D [Rational(-13338733, 274877906944), -0.000049])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCB153FDD)))
;; y should be Float32(0xCB153FDD [Rational(-9781213), -9781213.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #x4B153FDD))))
(check-sat)
(exit)
